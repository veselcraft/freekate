.class Lcom/perm/kate/AlbumCommentsAdapter$2;
.super Ljava/lang/Object;
.source "AlbumCommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsAdapter;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter$2;->this$0:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter$2;->this$0:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsAdapter;->access$000(Lcom/perm/kate/AlbumCommentsAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsAdapter;->photoClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
