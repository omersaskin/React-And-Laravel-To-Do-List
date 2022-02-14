import axios from 'axios'
import React, { Component } from 'react'
import { Link } from 'react-router-dom'

    class SampleCreate extends Component {
      constructor (props) {
        super(props)
        this.state = {
          title: '',
          body: '',
          errors: []
        }

         this.handleCreateNewItem = this.handleCreateNewItem.bind(this)
        this.hasErrorFor = this.hasErrorFor.bind(this)
        this.renderErrorFor = this.renderErrorFor.bind(this)

        this.input = React.createRef();  

      }

      

      handleCreateNewItem (event) {
        event.preventDefault();

 
        const { title,body } = event.target

        const { history } = this.props

          axios.post('/tasks', {
            title: title.value,
            body: body.value,
          })
          .then(function (response) {
            history.push('/')
            console.log(response);
          })
          .catch(function (error) {
            console.log(error);
          });
          
      }

      hasErrorFor (field) {
        return !!this.state.errors[field]
      }

      renderErrorFor (field) {
        if (this.hasErrorFor(field)) {
          return (
            <span className='invalid-feedback'>
              <strong>{this.state.errors[field][0]}</strong>
            </span>
          )
        }
      }

      render () {
        return (

          <div className='container py-4'>
            <div className='row justify-content-center'>
            
              <div className='col-md-12'>

              <Link className='btn btn-primary btn-sm mb-3' to='/'>
                      Listeye geri dön
                </Link>

                <div className='card'>
                  <div className='card-header'>Görev Ekle  </div>
                  <div className='card-body'>
                    <form onSubmit={this.handleCreateNewItem}>
                      
                      <div className='form-group'>
                        <label htmlFor='title'>  Başlık</label>
                        <input
                          id='title'
                          type='text'
                          className={`form-control ${this.hasErrorFor('name') ? 'is-invalid' : ''}`}
                          name='title'
                          ref={this.input}
                        />
                        {this.renderErrorFor('title')}
                      </div>
                      
                      <div className='form-group'>
                        <label htmlFor='body'>  Açıklama</label>
                        <textarea
                          id='body'
                          className={`form-control ${this.hasErrorFor('description') ? 'is-invalid' : ''}`}
                          name='body'
                          rows='10'
                         ref={this.input}
                        />
                        {this.renderErrorFor('body')}
                      </div>
                      <button className='btn btn-primary'>Oluştur</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        )
      }
    }

    export default SampleCreate
