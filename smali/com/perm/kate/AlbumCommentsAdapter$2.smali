.class Lcom/perm/kate/AlbumCommentsAdapter$2;
.super Ljava/lang/Object;
.source "AlbumCommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumCommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsAdapter;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter$2;->this$0:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter$2;->this$0:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsAdapter;->access$000(Lcom/perm/kate/AlbumCommentsAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsAdapter;->photoClick(Landroid/view/View;Landroid/app/Activity;)V

    .line 217
    return-void
.end method
