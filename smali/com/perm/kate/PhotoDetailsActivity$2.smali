.class Lcom/perm/kate/PhotoDetailsActivity$2;
.super Ljava/lang/Object;
.source "PhotoDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoDetailsActivity;->getUserInThread()V
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$2;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$2;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 145
    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$2;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$300(Lcom/perm/kate/PhotoDetailsActivity;)V

    .line 146
    return-void
.end method
