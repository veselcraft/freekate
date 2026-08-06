.class Lcom/perm/kate/PhotoViewerActrivity$6$1;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoViewerActrivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$6;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PhotoViewerActrivity$6;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$6;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 625
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 646
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$6;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$6;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v3, 0x7f070091

    invoke-virtual {v0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->displayToast(I)V

    .line 631
    new-instance v7, Lcom/perm/kate/api/User;

    invoke-direct {v7}, Lcom/perm/kate/api/User;-><init>()V

    .line 632
    .local v7, "u":Lcom/perm/kate/api/User;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/perm/kate/api/User;->uid:J

    .line 633
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$6;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$6;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    iput-object v0, v7, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 634
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v3, "photo_200"

    new-instance v5, Lcom/perm/kate/PhotoViewerActrivity$6$1$1;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$6;

    iget-object v4, v4, Lcom/perm/kate/PhotoViewerActrivity$6;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {v5, p0, v4}, Lcom/perm/kate/PhotoViewerActrivity$6$1$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$6$1;Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$6$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$6;

    iget-object v6, v4, Lcom/perm/kate/PhotoViewerActrivity$6;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
