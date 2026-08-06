.class public final enum Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
.super Ljava/lang/Enum;
.source "AppRateTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

.field public static final enum DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

.field public static final enum LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v2}, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const-string v1, "LIGHT"

    invoke-direct {v0, v1, v3}, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    sget-object v1, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    aput-object v1, v0, v2

    sget-object v1, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    aput-object v1, v0, v3

    sput-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-object v0
.end method

.method public static values()[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    invoke-virtual {v0}, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-object v0
.end method
