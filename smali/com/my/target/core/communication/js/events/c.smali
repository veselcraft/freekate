.class public final Lcom/my/target/core/communication/js/events/c;
.super Lcom/my/target/core/communication/js/events/a;
.source "JSAdClickEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "onAdClick"

    invoke-direct {p0, v0}, Lcom/my/target/core/communication/js/events/a;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/my/target/core/communication/js/events/c;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/my/target/core/communication/js/events/c;->b:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/communication/js/events/c;->a:Ljava/lang/String;

    return-object v0
.end method
