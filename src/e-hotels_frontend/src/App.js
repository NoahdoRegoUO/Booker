import logo from './booker_logo.svg';
import hotel1Img from './images/hotel1.jpg';
import hotel2Img from './images/hotel2.jpg';
import './App.css';

import Button from '@mui/material/Button';

function sayHello() {
  alert('You clicked me!');
}

function App() {
  return (
    <div className="App">
      <img src={logo} className="App-logo" alt="Booker Logo" />
      <p id="sign-in-text">Sign in as:</p>
      <Button variant="contained" color="success" onClick={sayHello}>Create Test Table</Button>
      <div id="left-hotel-image-container">
        <img src={hotel1Img} class="hotel-image" />
      </div>
      <div id="right-hotel-image-container">
        <img src={hotel2Img} class="hotel-image" />
      </div>
    </div>
  );
}

export default App;
