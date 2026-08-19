.class Lcom/perm/kate/CommentsSearchActivity$4;
.super Ljava/lang/Object;
.source "CommentsSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsSearchActivity;->confirmRemoveComment(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;

.field final synthetic val$commentId:Ljava/lang/Long;

.field final synthetic val$spammer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/lang/Long;J)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$4;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$4;->val$commentId:Ljava/lang/Long;

    iput-wide p3, p0, Lcom/perm/kate/CommentsSearchActivity$4;->val$spammer_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 290
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$4;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$4;->val$commentId:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity$4;->val$spammer_id:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/CommentsSearchActivity;->removeComment(Ljava/lang/Long;J)V

    return-void
.end method
