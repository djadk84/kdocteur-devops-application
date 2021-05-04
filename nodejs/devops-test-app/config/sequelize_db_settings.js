module.exports = {
  username: process.env.DEVOPS_TEST_DATABASE_USERNAME || 'sweatworksdba',
  password: process.env.DEVOPS_TEST_DATABASE_PASSWORD || 'sweatworkspassword',
  database: process.env.DEVOPS_TEST_DATABASE_NAME || 'sweatworksdb',
  host: process.env.DEVOPS_TEST_DATABASE_HOST || 'pgsql',
  dialect: 'postgres',
};
