import React, { Component } from 'react';
import Cast from './Cast.js';


class Movie extends Component {

  state ={liked:false , hideActors:true};
  
    render() {

      let likedOrNot = '';
      if(this.state.toggle === true){
        likedOrNot = "Unlike"
       } else { likedOrNot ="Like" }

let actorList =   this.props.movie.cast.map(actor=> (
  <Cast name={actor.name} role={actor.role} />
))
       
       let myActors ;
      if(this.state.hideActors === true){
        myActors = null ;
       } else { 
myActors = actorList ;
        

      return (
        <div>
         
         <h2>{this.props.movie.title}</h2>
         <img src={this.props.movie.poster}/>
         <div><strong>{this.props.movie.rating}</strong></div> 
         <p>{this.props.movie.description}</p>
         <p> Director: {this.props.movie.director}</p>
 <ul>
{

}
 
 </ul> 
 {myActors}

<button onClick={this.toggleLike}>
 {likedOrNot} 
</button>
<button onClick={this.toggleActors}>
          Actors
        </button>

        </div>
      );
    }

    toggleLike = () => {
      this.setState({ toggle: !this.state.toggle }) ;
    }
    toggleActors = () =>{
      this.setState({ hideActors: !this.state.toggle }) ;
    }
  }
}

  export default Movie ;
