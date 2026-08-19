.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;

.field final synthetic this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 0

    .line 2517
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->this$0:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2511
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 2512
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2513
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2518
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return-void
.end method
