.class public Lru/begun/adlib/RequestParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/RequestParam;->name:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lru/begun/adlib/RequestParam;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lru/begun/adlib/RequestParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lru/begun/adlib/RequestParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lru/begun/adlib/RequestParam;
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lru/begun/adlib/RequestParam;->name:Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lru/begun/adlib/RequestParam;
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lru/begun/adlib/RequestParam;->value:Ljava/lang/String;

    .line 14
    return-object p0
.end method
