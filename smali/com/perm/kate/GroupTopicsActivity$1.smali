.class Lcom/perm/kate/GroupTopicsActivity$1;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->getGroupTopics()V
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
    .param p1, "this$0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 67
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 68
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 70
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v6

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$300(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    move v7, v5

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 71
    return-void
.end method
