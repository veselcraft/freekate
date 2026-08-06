.class public Lcom/inmobi/ads/NativeStrandContainerLayout$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "NativeStrandContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a:I

    .line 82
    iput p2, p0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->b:I

    .line 83
    return-void
.end method
