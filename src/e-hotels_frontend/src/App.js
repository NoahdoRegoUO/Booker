import logo from './logo.svg';
import './App.css';

import Button from '@mui/material/Button';

function sayHello() {
  alert('You clicked me!');
}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <p>
          Booker
        </p>
        <img src={logo} className="App-logo" alt="logo" />
        <Button variant="contained" color="success" onClick={sayHello}>Create Test Table</Button>
      </header>
    </div>
  );
}

export default App;
