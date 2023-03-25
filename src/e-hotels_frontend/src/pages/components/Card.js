import React from 'react';

const Card = ({ image, title, description, action }) => {
    return (
        <div style={{
            width: '300px',
            height: '400px',
            border: '0px solid gray',
            backgroundColor: 'white',
            borderRadius: '20px',
            overflow: 'hidden',
            display: 'flex',
            margin: "1%",
            cursor: "pointer",
            flexDirection: 'column'
        }} onClick={action}>
            <img src={image} alt={title} style={{
                width: '100%',
                height: '50%',
                objectFit: 'cover'
            }} />
            <div style={{
                padding: '20px',
                display: 'flex',
                flexDirection: 'column'
            }}>
                <h2 style={{
                    fontSize: '24px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '10px'
                }}>{title}</h2>
                <p style={{
                    fontSize: '18px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '10px'
                }}>{description}</p>
            </div>
        </div>
    );
}

export default Card;
