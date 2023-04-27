import { useNavigate } from 'react-router-dom';
import React from 'react';

function Home() {
  let navigate = useNavigate();
  return (
    <div>
      <h1>대출상품 한눈에</h1>
      <button
        onClick={() => {
          navigate('/product');
        }}
      >누르면 대출상품 리스트로 이동한다.</button>
    </div>
  )
}
export default Home;