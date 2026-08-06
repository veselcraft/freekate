.class abstract Lcom/inmobi/ads/aj$b;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/inmobi/ads/aj;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/aj;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iput-object p1, p0, Lcom/inmobi/ads/aj$b;->b:Lcom/inmobi/ads/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    .line 138
    iput v1, p0, Lcom/inmobi/ads/aj$b;->c:I

    .line 139
    iput v1, p0, Lcom/inmobi/ads/aj$b;->d:I

    .line 140
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lcom/inmobi/ads/aj$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/aj$b;->c:I

    .line 176
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/aj$b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 183
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/inmobi/ads/aj$b;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V

    .line 184
    return-object v0

    .line 178
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/aj$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/aj$b;->d:I

    .line 179
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/inmobi/ads/aj$b;->b:Lcom/inmobi/ads/aj;

    invoke-static {v1}, Lcom/inmobi/ads/aj;->b(Lcom/inmobi/ads/aj;)I

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Lcom/inmobi/ads/aj;->b(Landroid/view/View;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->b:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/aj;)I

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 205
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/aj$b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Miss Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/aj$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hit Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/aj$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
