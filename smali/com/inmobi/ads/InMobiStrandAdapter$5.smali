.class Lcom/inmobi/ads/InMobiStrandAdapter$5;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->initWithPlacer(Landroid/content/Context;JLandroid/widget/Adapter;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$5;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadSucceeded(I)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$5;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$300(Lcom/inmobi/ads/InMobiStrandAdapter;I)V

    .line 174
    return-void
.end method

.method public onAdRemoved(I)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$5;->a:Lcom/inmobi/ads/InMobiStrandAdapter;

    invoke-static {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter;->access$400(Lcom/inmobi/ads/InMobiStrandAdapter;I)V

    .line 179
    return-void
.end method
