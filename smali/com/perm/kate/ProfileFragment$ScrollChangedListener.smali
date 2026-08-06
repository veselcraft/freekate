.class Lcom/perm/kate/ProfileFragment$ScrollChangedListener;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/ProfileFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "x1"    # Lcom/perm/kate/ProfileFragment$1;

    .prologue
    .line 1814
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;-><init>(Lcom/perm/kate/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    .line 1817
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileFragment;->access$4900(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 1820
    .local v1, "scrollY":I
    const-wide v4, 0x406cc00000000000L    # 230.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    .line 1821
    .local v0, "limit":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 1822
    .local v2, "transparency":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1823
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1824
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 1825
    const/4 v2, 0x0

    .line 1826
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileFragment;->access$5000(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1827
    return-void
.end method
