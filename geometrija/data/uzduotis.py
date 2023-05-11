from typing import Any
from sqlalchemy import create_engine, Integer, String, Float, DateTime
from sqlalchemy.orm import sessionmaker, DeclarativeBase, mapped_column
from datetime import datetime

engine = 