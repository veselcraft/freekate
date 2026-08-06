.class Lcom/perm/kate/AlbumsFragment$7;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumsFragment;->showConfirmDeleteDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;

.field final synthetic val$aid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$7;->this$0:Lcom/perm/kate/AlbumsFragment;

    iput-wide p2, p0, Lcom/perm/kate/AlbumsFragment$7;->val$aid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$7;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v2, p0, Lcom/perm/kate/AlbumsFragment$7;->val$aid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->access$1000(Lcom/perm/kate/AlbumsFragment;J)V

    .line 232
    return-void
.end method
