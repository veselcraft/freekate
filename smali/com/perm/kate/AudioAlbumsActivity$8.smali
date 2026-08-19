.class Lcom/perm/kate/AudioAlbumsActivity$8;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    add-int/2addr p2, p3

    invoke-static {p1, p2, p4}, Lcom/perm/kate/AudioAlbumsActivity;->access$1400(Lcom/perm/kate/AudioAlbumsActivity;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
