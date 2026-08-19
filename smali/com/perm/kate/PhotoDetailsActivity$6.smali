.class Lcom/perm/kate/PhotoDetailsActivity$6;
.super Ljava/lang/Thread;
.source "PhotoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoDetailsActivity;->getAlbumInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$6;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$6;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$600(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$6;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$500(Lcom/perm/kate/PhotoDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/PhotoDetailsActivity$6;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v3}, Lcom/perm/kate/PhotoDetailsActivity;->access$700(Lcom/perm/kate/PhotoDetailsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoDetailsActivity$6;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
