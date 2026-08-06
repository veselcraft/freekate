.class Lcom/inmobi/ads/m$1;
.super Ljava/lang/Object;
.source "DecorViewVisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/m;-><init>(Lcom/inmobi/ads/ap$a;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/m;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->h()V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
