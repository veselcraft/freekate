.class Lcom/perm/kate/PhotoList$2;
.super Lcom/perm/kate/session/Callback;
.source "PhotoList.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoList;Landroid/app/Activity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 126
    iget-object p1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x2

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    .line 127
    iget-object p1, p1, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    if-eqz p1, :cond_0

    .line 128
    invoke-interface {p1}, Lcom/perm/utils/SimpleListener;->call()V

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 106
    check-cast p1, Ljava/util/ArrayList;

    .line 107
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 109
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 110
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    iget-wide v2, v1, Lcom/perm/kate/PhotoList;->aid:J

    iget-wide v4, v1, Lcom/perm/kate/PhotoList;->album_owner_id:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    const-string v0, "pl_recreatePhotos2"

    .line 111
    invoke-static {v6, v7, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create album photos duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v6

    const-wide/32 v3, 0xf4240

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.PhotoList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    iget-object v0, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x0

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x3

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoList$2;->this$0:Lcom/perm/kate/PhotoList;

    iget-object p1, p1, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/perm/utils/SimpleListener;->call()V

    :cond_1
    return-void
.end method
