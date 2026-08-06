.class Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method
