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

    .line 80
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/GroupTopicsActivity;->access$002(Lcom/perm/kate/GroupTopicsActivity;I)I

    .line 84
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 86
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$200(Lcom/perm/kate/GroupTopicsActivity;)I

    move-result v7

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupTopicsActivity;->access$300(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/GroupTopicsActivity$1;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->getGroupTopics(JLjava/lang/Integer;IIILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
