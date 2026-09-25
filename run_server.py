import sys
import os
import uvicorn

# Add backend directory to sys.path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'backend'))

from server import app

if __name__ == '__main__':
    print("=" * 60)
    print("  Insurance Fraud Detection ML Backend API")
    print("  Serving at: http://127.0.0.1:8000")
    print("  API Docs at: http://127.0.0.1:8000/docs")
    print("=" * 60)
    uvicorn.run(app, host="127.0.0.1", port=8000)
