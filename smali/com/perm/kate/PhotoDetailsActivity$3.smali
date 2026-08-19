.class Lcom/perm/kate/PhotoDetailsActivity$3;
.super Ljava/lang/Object;
.source "PhotoDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoDetailsActivity;->getGroupInThread()V
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

    .line 151
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$3;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$3;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 157
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$3;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$300(Lcom/perm/kate/PhotoDetailsActivity;)V

    return-void
.end method
