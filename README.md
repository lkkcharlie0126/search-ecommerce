# E-commerce Search with Elasticsearch

This project implements a hybrid search system for an e-commerce platform using Elasticsearch. It leverages both traditional BM25 text search and vector-based search using dense embeddings for enhanced search capabilities.

## Features

- **Hybrid Search**: Combines BM25 text search with vector-based search for improved accuracy.
- **Image and Text Search**: Supports searching by both product images and text queries.
- **Elasticsearch Integration**: Utilizes Elasticsearch for indexing and searching data.
- **GPU Acceleration**: Supports GPU acceleration for faster vector computations.

## Prerequisites

- Docker and Docker Compose
- Python 3.11
- Elasticsearch

## Setup

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Build and run the Docker containers**:
   ```bash
   docker-compose up --build
   ```

3. **Install Python dependencies**:
   Inside the Docker container, run:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

### Indexing Data

To index data into Elasticsearch, set the `IS_CREATING_INDEX` and `IS_INDEXING_DATA` flags to `True` in the Jupyter notebook and run the cells responsible for creating the index and indexing data.

### Running Searches

- **Hybrid Search**: Use the `search_elasticsearch` function to perform a hybrid search with a text query.
- **Image Search**: Use the `image_search` function to search using an image.
- **Combined Image and Text Search**: Use the `image_and_query_search` function to search using both an image and a text query.

### Example

To perform a search using a text query:

python
query = "birkin hermes"
results = search_elasticsearch(query, weights=[0, 0.7, 0.3], top_k=20)
print_results(results)


## File Structure

- **notebooks/**: Contains Jupyter notebooks for data processing and search functionalities.
- **datasets/**: Directory for storing datasets.
- **Dockerfile**: Docker configuration for setting up the environment.
- **docker-compose.yml**: Docker Compose configuration for running the application.

## Environment Variables

Ensure the following environment variables are set, either in a `.env` file or directly in your environment:

- `ELASTICSEARCH_URL`
- `ELASTICSEARCH_USERNAME`
- `ELASTICSEARCH_PASSWORD`

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.