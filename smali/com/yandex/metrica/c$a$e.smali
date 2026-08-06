.class public final Lcom/yandex/metrica/c$a$e;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public b:D

.field public c:D

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$e;->d()Lcom/yandex/metrica/c$a$e;

    .line 157
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$e;->b:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 175
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$e;->c:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(ID)V

    .line 176
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$e;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 179
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->e:I

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x4

    iget v1, p0, Lcom/yandex/metrica/c$a$e;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 182
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->f:I

    if-eqz v0, :cond_2

    .line 183
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$e;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 185
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->g:I

    if-eqz v0, :cond_3

    .line 186
    const/4 v0, 0x6

    iget v1, p0, Lcom/yandex/metrica/c$a$e;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 188
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/c$a$e;->h:I

    if-eqz v0, :cond_4

    .line 189
    const/4 v0, 0x7

    iget v1, p0, Lcom/yandex/metrica/c$a$e;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 191
    :cond_4
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 192
    return-void
.end method

.method protected c()I
    .locals 6

    .prologue
    .line 196
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 197
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    iget-wide v2, p0, Lcom/yandex/metrica/c$a$e;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$e;->d:J

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->e:I

    if-eqz v1, :cond_1

    .line 206
    const/4 v1, 0x4

    iget v2, p0, Lcom/yandex/metrica/c$a$e;->e:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->f:I

    if-eqz v1, :cond_2

    .line 210
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$e;->f:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->g:I

    if-eqz v1, :cond_3

    .line 214
    const/4 v1, 0x6

    iget v2, p0, Lcom/yandex/metrica/c$a$e;->g:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/c$a$e;->h:I

    if-eqz v1, :cond_4

    .line 218
    const/4 v1, 0x7

    iget v2, p0, Lcom/yandex/metrica/c$a$e;->h:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_4
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$e;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 160
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$e;->b:D

    .line 161
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$e;->c:D

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/c$a$e;->d:J

    .line 163
    iput v2, p0, Lcom/yandex/metrica/c$a$e;->e:I

    .line 164
    iput v2, p0, Lcom/yandex/metrica/c$a$e;->f:I

    .line 165
    iput v2, p0, Lcom/yandex/metrica/c$a$e;->g:I

    .line 166
    iput v2, p0, Lcom/yandex/metrica/c$a$e;->h:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$e;->a:I

    .line 168
    return-object p0
.end method
