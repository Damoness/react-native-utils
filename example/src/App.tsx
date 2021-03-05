import * as React from 'react';

import { Button, StyleSheet, View } from 'react-native';
import { ImpactFeedback } from '@damoness/react-native-utils';

export default function App() {
  return (
    <View style={styles.container}>
      <Button
        title="震动"
        onPress={() => {
          ImpactFeedback.impactOccurred();
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
