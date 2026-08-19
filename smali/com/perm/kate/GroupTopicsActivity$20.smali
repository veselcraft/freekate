.class Lcom/perm/kate/GroupTopicsActivity$20;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$20;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 466
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$20;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/GroupTopicsActivity$20;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/GroupTopicsActivity$20;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iget v7, v6, Lcom/perm/kate/GroupTopicsActivity;->offset:I

    invoke-static {v6}, Lcom/perm/kate/GroupTopicsActivity;->access$1400(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/GroupTopicsActivity$20;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
