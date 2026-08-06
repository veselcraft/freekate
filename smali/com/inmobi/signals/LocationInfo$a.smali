.class Lcom/inmobi/signals/LocationInfo$a;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inmobi/signals/LocationInfo$1;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/signals/LocationInfo;->b(Z)Z

    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Google API client connection suspended"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Successfully connected to Google API client."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/signals/LocationInfo;->b(Z)Z

    .line 153
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 162
    const-string v0, "onConnected"

    .line 163
    const-string v0, "onConnectionSuspended"

    .line 165
    if-eqz p3, :cond_1

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onConnected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    aget-object v0, p3, v3

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/LocationInfo$a;->a(Landroid/os/Bundle;)V

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onConnectionSuspended"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/signals/LocationInfo$a;->a(I)V

    move-object v0, v1

    .line 173
    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
