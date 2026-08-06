.class Lcom/perm/kate/PhotoChooserActivity$3;
.super Ljava/lang/Object;
.source "PhotoChooserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoChooserActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 305
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$3;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotoChooserActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 309
    return-void
.end method
