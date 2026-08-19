.class Lcom/perm/kate/PhotoViewerActrivity$8$1;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoViewerActrivity$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity$8;Landroid/app/Activity;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$8;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 745
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$8;

    iget-object p1, p1, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 751
    new-instance p1, Lcom/perm/kate/api/User;

    invoke-direct {p1}, Lcom/perm/kate/api/User;-><init>()V

    .line 752
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/perm/kate/api/User;->uid:J

    .line 753
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$8$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$8;

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    iput-object v0, p1, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 754
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 757
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 758
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/perm/kate/PhotoViewerActrivity$8$1$1;

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$8;

    iget-object p1, p1, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {v7, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$8$1$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$8$1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$8$1;->this$1:Lcom/perm/kate/PhotoViewerActrivity$8;

    iget-object v8, p1, Lcom/perm/kate/PhotoViewerActrivity$8;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const-string v5, "photo_200"

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
