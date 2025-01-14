import React from 'react'
import logo from '../images/logo.svg'
import { FaAlignRight } from 'react-icons/fa'
import { Link } from 'react-router-dom'



export default class Navbar extends React.Component {
  state = {
    isOpen: false
  }

  handleToggle = () => {
    this.setState({
      isOpen: !this.state.isOpen
    })
  }
  render() {
    return (
      <nav className="navbar">
        <div className="nav-center">
          <div className="nav-header">
            <Link to="/">
              <img src={logo} alt="beach resort logo"></img>
            </Link>

            <button type="button" className="nav-btn">
              <FaAlignRight className="nav-icon" onClick={this.handleToggle}></FaAlignRight>
            </button>
          </div>


          <ul className={this.state.isOpen ? 'nav-links show-nav' : 'nav-links'}>
            <li>
              <Link to="/">Home</Link>
            </li>
            <li>
              <Link to="/rooms">Rooms</Link>
            </li>
          </ul>
        </div>

      </nav>
    )
  }
}