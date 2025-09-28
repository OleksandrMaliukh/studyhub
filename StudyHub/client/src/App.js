import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [message, setMessage] = useState('Loading...');
  const [apiStatus, setApiStatus] = useState('Checking...');

  useEffect(() => {
    // Test API connection
    const testAPI = async () => {
      try {
        const response = await axios.get('/api/test');
        setMessage(response.data.message);
        setApiStatus('✅ Connected');
      } catch (error) {
        setMessage('Failed to connect to API');
        setApiStatus('❌ Disconnected');
      }
    };

    testAPI();
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>🎓 StudyHub</h1>
        <p>A modern flashcard learning platform</p>
        
        <div className="status">
          <h2>Status</h2>
          <p><strong>Frontend:</strong> ✅ Running</p>
          <p><strong>Backend API:</strong> {apiStatus}</p>
          <p><strong>Message:</strong> {message}</p>
        </div>

        <div className="features">
          <h2>🚀 Features</h2>
          <ul>
            <li>✅ User Authentication</li>
            <li>✅ Study Set Management</li>
            <li>✅ Multiple Study Modes</li>
            <li>✅ Interactive Games</li>
            <li>✅ Responsive Design</li>
          </ul>
        </div>

        <div className="deployment-info">
          <h2>🚀 Deployment Ready!</h2>
          <p>Your StudyHub application is ready for deployment.</p>
          <p>Follow the deployment guide to get it live!</p>
        </div>
      </header>
    </div>
  );
}

export default App;
