import axios from 'axios'
import React, { Component } from 'react'
import { Link } from 'react-router-dom'

class SampleList extends Component {
    constructor(props) {
        super(props)
        this.state = {
            data: [],
            url: '/tasks',
            pagination: []
        }

        this.handleDelete=this.handleDelete.bind(this);
    }

    componentDidMount() {
       this.getData();
    }

    getData(){
         axios.get(this.state.url).then(response => {
            this.setState({
                data: this.state.data.length > 0 ? this.state.data.concat(response.data.data) : response.data.data,
                url: response.data.next_page_url
            })

            this.makePagination(response.data)
        })
    }

    loadMore() {
      this.setState({
        url: this.state.pagination.next_page_url
      })

      this.componentDidMount()
    }

    makePagination(data) {
      let pagination= {
        current_page: data.current_page,
        last_page: data.last_page,
        next_page_url: data.next_page_url,
        prev_page_url: data.prev_page_url,
      }

      setState({
        pagination: pagination
      })
    }

 handleDelete(e) {
    e.preventDefault();
 

     const id=e.target.id.value;

    console.log(id);
     axios.delete('/tasks/'+id);
    
      this.getData();
  }

    render() {
        const { data } = this.state

        return (
            <div className='container py-4'>
            <div className='row justify-content-center'>
            <div className='col-md-12'>Tüm Öğeler</div>
              <div className='col-md-12'>
               
                     
                    <Link className='btn btn-primary btn-sm mb-3' to='/create'>
                      Yeni Oluştur 
                    </Link>
                    
                    {this.state.data.length!==0 ? 

                    <table className="table table-hovered table-striped">
                        <thead>
                            <td>Sıra</td>
                            <td>Başlık</td>
                            <td>Açıklama</td>
                            <td>Düzenle</td>
                            <td>Sil</td>
                        </thead>

                    {this.state.data.map((item,i)=>(
                      <tr>
                            <td>{i+1}</td>
                            <td> {item.title}</td>
                            <td> {item.body}</td>
                            <td> <Link   className='btn btn-info'  to={`tasks/${item.id}/edit`} key={item.id}  > Düzenle </Link></td>
                            <td><form onSubmit={this.handleDelete} >
                            <input type="hidden" name="id" value={item.id}  />
                              <button type="submit"  className="btn btn-danger">Sil</button>
                            </form></td>
                        </tr>
                      ))}
                    </table>

                    : <div>Henüz öğe eklenmedi!</div> }
                             <button className='btn btn-default bg-dark text-white' onClick={this.loadMore.bind(this)}>Daha Fazla Göster</button>         
                 </div>
            </div>
          </div>
        )
    }
}

export default SampleList
