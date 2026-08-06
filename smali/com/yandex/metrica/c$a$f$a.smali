.class public final Lcom/yandex/metrica/c$a$f$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static volatile m:[Lcom/yandex/metrica/c$a$f$a;


# instance fields
.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Lcom/yandex/metrica/c$a$e;

.field public h:Lcom/yandex/metrica/c$a$d;

.field public i:Ljava/lang/String;

.field public j:Lcom/yandex/metrica/c$a$a;

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1179
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f$a;->e()Lcom/yandex/metrica/c$a$f$a;

    .line 1180
    return-void
.end method

.method public static d()[Lcom/yandex/metrica/c$a$f$a;
    .locals 2

    .prologue
    .line 1134
    sget-object v0, Lcom/yandex/metrica/c$a$f$a;->m:[Lcom/yandex/metrica/c$a$f$a;

    if-nez v0, :cond_1

    .line 1135
    sget-object v1, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/c$a$f$a;->m:[Lcom/yandex/metrica/c$a$f$a;

    if-nez v0, :cond_0

    .line 1138
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yandex/metrica/c$a$f$a;

    sput-object v0, Lcom/yandex/metrica/c$a$f$a;->m:[Lcom/yandex/metrica/c$a$f$a;

    .line 1140
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    :cond_1
    sget-object v0, Lcom/yandex/metrica/c$a$f$a;->m:[Lcom/yandex/metrica/c$a$f$a;

    return-object v0

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .line 1201
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$f$a;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1202
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$f$a;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1203
    const/4 v0, 0x3

    iget v1, p0, Lcom/yandex/metrica/c$a$f$a;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1204
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->f:[B

    sget-object v1, Lcom/yandex/metrica/impl/ob/f;->a:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1208
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->f:[B

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(I[B)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->g:Lcom/yandex/metrica/c$a$e;

    if-eqz v0, :cond_2

    .line 1211
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->g:Lcom/yandex/metrica/c$a$e;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->h:Lcom/yandex/metrica/c$a$d;

    if-eqz v0, :cond_3

    .line 1214
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->h:Lcom/yandex/metrica/c$a$d;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1216
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1217
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1219
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->j:Lcom/yandex/metrica/c$a$a;

    if-eqz v0, :cond_5

    .line 1220
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->j:Lcom/yandex/metrica/c$a$a;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1222
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/c$a$f$a;->k:Z

    if-eqz v0, :cond_6

    .line 1223
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$f$a;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 1225
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/c$a$f$a;->l:I

    if-eqz v0, :cond_7

    .line 1226
    const/16 v0, 0xc

    iget v1, p0, Lcom/yandex/metrica/c$a$f$a;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1228
    :cond_7
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1229
    return-void
.end method

.method protected c()I
    .locals 4

    .prologue
    .line 1233
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1234
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$f$a;->b:J

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1236
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/yandex/metrica/c$a$f$a;->c:J

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1238
    const/4 v1, 0x3

    iget v2, p0, Lcom/yandex/metrica/c$a$f$a;->d:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1240
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1241
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1244
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->f:[B

    sget-object v2, Lcom/yandex/metrica/impl/ob/f;->a:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1245
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->f:[B

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->g:Lcom/yandex/metrica/c$a$e;

    if-eqz v1, :cond_2

    .line 1249
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->g:Lcom/yandex/metrica/c$a$e;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->h:Lcom/yandex/metrica/c$a$d;

    if-eqz v1, :cond_3

    .line 1253
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->h:Lcom/yandex/metrica/c$a$d;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1257
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->j:Lcom/yandex/metrica/c$a$a;

    if-eqz v1, :cond_5

    .line 1261
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$a;->j:Lcom/yandex/metrica/c$a$a;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1264
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/c$a$f$a;->k:Z

    if-eqz v1, :cond_6

    .line 1265
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1268
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/c$a$f$a;->l:I

    if-eqz v1, :cond_7

    .line 1269
    const/16 v1, 0xc

    iget v2, p0, Lcom/yandex/metrica/c$a$f$a;->l:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1272
    :cond_7
    return v0
.end method

.method public e()Lcom/yandex/metrica/c$a$f$a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1183
    iput-wide v4, p0, Lcom/yandex/metrica/c$a$f$a;->b:J

    .line 1184
    iput-wide v4, p0, Lcom/yandex/metrica/c$a$f$a;->c:J

    .line 1185
    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f$a;->d:I

    .line 1186
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->e:Ljava/lang/String;

    .line 1187
    sget-object v0, Lcom/yandex/metrica/impl/ob/f;->a:[B

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->f:[B

    .line 1188
    iput-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->g:Lcom/yandex/metrica/c$a$e;

    .line 1189
    iput-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->h:Lcom/yandex/metrica/c$a$d;

    .line 1190
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$a;->i:Ljava/lang/String;

    .line 1191
    iput-object v1, p0, Lcom/yandex/metrica/c$a$f$a;->j:Lcom/yandex/metrica/c$a$a;

    .line 1192
    iput-boolean v2, p0, Lcom/yandex/metrica/c$a$f$a;->k:Z

    .line 1193
    iput v2, p0, Lcom/yandex/metrica/c$a$f$a;->l:I

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f$a;->a:I

    .line 1195
    return-object p0
.end method
