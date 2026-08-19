.class Landroidx/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# instance fields
.field private mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

.field final synthetic val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V
    .locals 0

    .line 323
    iput-object p2, p0, Landroidx/transition/ChangeBounds$7;->val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iput-object p2, p0, Landroidx/transition/ChangeBounds$7;->mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    return-void
.end method
