import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import Home from './view/home';
import Login from './view/login';
import Product from './view/product';
import Table from './view/table';
import Axios from './view/axios';

function App() {
  return (
  <BrowserRouter>
  <nav>
    <Link to='/'>메인화면</Link>
    <br />
    <Link to='/login'>로그인</Link>
    <br />
    <Link to='/product'>대출상품</Link>
    <br />
    <Link to='/table'>게시판</Link>
    <br />
    <Link to='/axios'>Axios</Link>
  </nav>
    <header>----------------------------------</header>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/login" element={<Login />} />
      <Route path="/product" element={<Product />} />
      <Route path="/table" element={<Table />} />
      <Route path="/axios" element={<Axios />} />
    </Routes>
    <footer>----------------------------------</footer>
  </BrowserRouter>
  );
}
export default App;