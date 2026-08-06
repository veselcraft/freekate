.class public Lcom/inmobi/rendering/RenderingProperties;
.super Ljava/lang/Object;
.source "RenderingProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/rendering/RenderingProperties$PlacementType;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/RenderingProperties$PlacementType;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/inmobi/rendering/RenderingProperties;->a:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/rendering/RenderingProperties;->a:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method
