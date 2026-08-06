.class Lcom/perm/kate/CommentsActivity$19;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$19;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$19;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/CommentsActivity;->access$2200(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    .line 752
    return-void
.end method
