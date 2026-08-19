.class Lcom/perm/kate/VideoAlbumsActivity$8;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$8;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$8;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    add-int/2addr p2, p3

    invoke-static {p1, p2, p4}, Lcom/perm/kate/VideoAlbumsActivity;->access$1000(Lcom/perm/kate/VideoAlbumsActivity;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
