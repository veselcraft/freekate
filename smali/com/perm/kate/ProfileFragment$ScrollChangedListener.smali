.class Lcom/perm/kate/ProfileFragment$ScrollChangedListener;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1867
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/ProfileFragment$1;)V
    .locals 0

    .line 1867
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;-><init>(Lcom/perm/kate/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .line 1870
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$4900(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const-wide v1, 0x406cc00000000000L    # 230.0

    .line 1873
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 1879
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$5000(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
