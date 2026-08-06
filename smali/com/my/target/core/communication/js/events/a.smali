.class public abstract Lcom/my/target/core/communication/js/events/a;
.super Ljava/lang/Object;
.source "AbstractJSEvent.java"

# interfaces
.implements Lcom/my/target/core/communication/js/events/f;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/my/target/core/communication/js/events/a;->a:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/my/target/core/communication/js/events/a;->a:Ljava/lang/String;

    return-object v0
.end method
