.class Lcom/perm/kate/WallMessageActivity$22;
.super Lcom/perm/kate/session/Callback;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->closeOpenComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$open_comments:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;Z)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$22;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-boolean p3, p0, Lcom/perm/kate/WallMessageActivity$22;->val$open_comments:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 913
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$22;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity$22;->val$open_comments:Z

    iput-boolean v0, p1, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    return-void
.end method
