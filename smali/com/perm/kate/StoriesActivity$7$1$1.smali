.class Lcom/perm/kate/StoriesActivity$7$1$1;
.super Ljava/lang/Thread;
.source "StoriesActivity.java"


# instance fields
.field final synthetic this$2:Lcom/perm/kate/StoriesActivity$7$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity$7$1;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$7$1$1;->this$2:Lcom/perm/kate/StoriesActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 290
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/StoriesActivity$7$1$1;->this$2:Lcom/perm/kate/StoriesActivity$7$1;

    iget-object v2, v1, Lcom/perm/kate/StoriesActivity$7$1;->val$photo:Lcom/perm/kate/api/Story;

    iget-wide v3, v2, Lcom/perm/kate/api/Story;->owner_id:J

    iget-wide v5, v2, Lcom/perm/kate/api/Story;->id:J

    iget-object v1, v1, Lcom/perm/kate/StoriesActivity$7$1;->this$1:Lcom/perm/kate/StoriesActivity$7;

    iget-object v7, v1, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object v8, v7, Lcom/perm/kate/StoriesActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v8

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->deleteStory(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
