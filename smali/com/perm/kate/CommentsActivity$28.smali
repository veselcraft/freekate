.class Lcom/perm/kate/CommentsActivity$28;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->enableFieldAndButtonsInUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$28;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/CommentsActivity$28;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$28;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->sendButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity$28;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
