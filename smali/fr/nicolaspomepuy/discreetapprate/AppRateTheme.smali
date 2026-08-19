.class public final enum Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
.super Ljava/lang/Enum;
.source "AppRateTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .locals 5

    .line 7
    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const-string v1, "DARK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->DARK:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    new-instance v1, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const-string v3, "LIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->LIGHT:Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    const/4 v3, 0x2

    new-array v3, v3, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
    .locals 1

    .line 6
    const-class v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-object p0
.end method

.method public static values()[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;
    .locals 1

    .line 6
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    invoke-virtual {v0}, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/nicolaspomepuy/discreetapprate/AppRateTheme;

    return-object v0
.end method
