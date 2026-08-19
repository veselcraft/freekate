.class Lcom/perm/kate/GroupTopicsActivity$15;
.super Ljava/lang/Thread;
.source "GroupTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupTopicsActivity;->editTopicTitle(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;

.field final synthetic val$callback_edit:Lcom/perm/kate/session/Callback;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$topic_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;JLjava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$15;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$topic_id:J

    iput-object p4, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$callback_edit:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 399
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity$15;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupTopicsActivity;->access$100(Lcom/perm/kate/GroupTopicsActivity;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$topic_id:J

    iget-object v5, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/GroupTopicsActivity$15;->val$callback_edit:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/GroupTopicsActivity$15;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->editTopic(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
