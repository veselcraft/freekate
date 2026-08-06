.class Lcom/inmobi/rendering/mraid/k$1;
.super Ljava/lang/Object;
.source "MraidResizeProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/k;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/k;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/k;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/k$1;->a:Lcom/inmobi/rendering/mraid/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/k$1;->a:Lcom/inmobi/rendering/mraid/k;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/k;->a(Lcom/inmobi/rendering/mraid/k;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->k()V

    .line 87
    return-void
.end method
