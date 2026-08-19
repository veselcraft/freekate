.class Lcom/perm/kate/AlbumCommentsActivity$3;
.super Ljava/lang/Object;
.source "AlbumCommentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->confirmRemoveComment(Lcom/perm/kate/api/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$3;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$3;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$3;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$3;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-virtual {p1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->removeComment(Lcom/perm/kate/api/Comment;)V

    return-void
.end method
