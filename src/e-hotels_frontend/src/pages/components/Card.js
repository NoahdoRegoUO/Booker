import React from 'react';

const Card = ({ image, title, description, description2, description3, action }) => {
    return (
        <div style={{
            width: '320px',
            height: '450px',
            border: '0px solid gray',
            backgroundColor: 'white',
            borderRadius: '20px',
            overflow: 'hidden',
            display: 'flex',
            margin: "1vmin",
            cursor: "pointer",
            flexDirection: 'column'
        }} onClick={action}>
            <img src={image} alt={title} style={{
                width: '100%',
                height: '50%',
                objectFit: 'cover'
            }} />
            <div style={{
                padding: '1px',
                display: 'flex',
                flexDirection: 'column'
            }}>
                <h2 style={{
                    fontSize: '24px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '1px'
                }}>{title}</h2>
                <p style={{
                    fontSize: '18px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '1px'
                }}>{description}</p>
                <p style={{
                    fontSize: '18px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '1px'
                }}>{description2}</p>
                <p style={{
                    fontSize: '18px',
                    fontWeight: 'bold',
                    color: '#1f1f1f',
                    marginBottom: '10px'
                }}>{description3}</p>
            </div>
        </div>
    );
}

export default Card;
