.class Lcom/perm/kate/PhotoList$1;
.super Lcom/perm/kate/session/Callback;
.source "PhotoList.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoList;Landroid/app/Activity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x2

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    .line 98
    iget-object p1, p1, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/perm/utils/SimpleListener;->call()V

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 12

    .line 74
    iget-object v0, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    .line 75
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 78
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    iget-object v4, v4, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 80
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    iget-wide v4, v0, Lcom/perm/kate/PhotoList;->aid:J

    iget-wide v0, v0, Lcom/perm/kate/PhotoList;->album_owner_id:J

    invoke-virtual {p1, v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 81
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    iget-object v7, p1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget-wide v8, p1, Lcom/perm/kate/PhotoList;->aid:J

    iget-wide v10, p1, Lcom/perm/kate/PhotoList;->album_owner_id:J

    invoke-virtual/range {v6 .. v11}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    const-string p1, "pl_recreatePhotos1"

    .line 82
    invoke-static {v2, v3, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recreate album photos duration "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kate.PhotoList"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    iget-object p1, p1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x0

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    const/4 v0, 0x3

    iput v0, p1, Lcom/perm/kate/PhotoList;->state:I

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoList$1;->this$0:Lcom/perm/kate/PhotoList;

    iget-object p1, p1, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1}, Lcom/perm/utils/SimpleListener;->call()V

    :cond_1
    return-void
.end method
