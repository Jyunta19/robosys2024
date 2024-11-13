#!/bin/bash
# SPDX-FileCopyrightText: 2024 Jyunta Suzuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = "15" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK  # 通ったのが（人間に）分かるように表示
exit $res

