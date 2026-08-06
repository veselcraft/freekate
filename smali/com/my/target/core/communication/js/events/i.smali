.class public final Lcom/my/target/core/communication/js/events/i;
.super Lcom/my/target/core/communication/js/events/a;
.source "JSStatEvent.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "onStat"

    invoke-direct {p0, v0}, Lcom/my/target/core/communication/js/events/a;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/my/target/core/communication/js/events/i;->a:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/my/target/core/communication/js/events/i;->b:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/my/target/core/communication/js/events/i;->a:Ljava/util/List;

    return-object v0
.end method
